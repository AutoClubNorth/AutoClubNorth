-- Member Table and Role Enum
CREATE TYPE Role AS ENUM('Admin', 'Member');

CREATE TABLE IF NOT EXISTS Member(
  id int PRIMARY KEY generated always as identity,
  email varchar(100) UNIQUE NOT NULL,
  password varchar(50) NOT NULL,
  role Role NOT NULL,
  firstCreated TIMESTAMP NOT NULL,
  lastUpdated TIMESTAMP,
  createdBy int REFERENCES Member(id),
  updatedBy int REFERENCES Member(id),
  deletedAt TIMESTAMP
);

-- MemberHistory Table and ActionType Enum
CREATE TYPE ActionType AS ENUM('Modified', 'Deleted', 'Created');

CREATE TABLE IF NOT EXISTS MemberHistory(
  id int PRIMARY KEY generated always as identity,
  memberId int REFERENCES Member(id),
  actionType ActionType NOT NULL,
  actionDetails TEXT NOT NULL,
  createdAt TIMESTAMP NOT NULL,
  createdBy int REFERENCES Member(id)
);

-- Subscription Table and SubscriptionType Enum
CREATE TYPE SubscriptionType AS ENUM('Email', 'Account');

CREATE TABLE IF NOT EXISTS Subscription(
  memberId int REFERENCES Member(id) NOT NULL,
  type SubscriptionType NOT NULL,
  subscribed boolean,
  dateSubscribed TIMESTAMP NOT NULL,
  subscriptionExpires TIMESTAMP,
  dateUnsubscribed TIMESTAMP,
  firstCreated TIMESTAMP NOT NULL,
  lastUpdated TIMESTAMP,
  createdBy int REFERENCES Member(id),
  updatedBy int REFERENCES Member(id),
  PRIMARY KEY(memberId, type)
);