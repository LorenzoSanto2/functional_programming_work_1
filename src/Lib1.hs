module Lib1
  ( keywords
  , Command(..)
  , examples
  ) where

keywords :: [String]
keywords =
  [ "create task"
  , "add subtask"
  , "complete task"
  , "list tasks"
  , "estimate project"
  , "dump examples"
  ]


data Command
  = CreateTask String Int
  | AddSubtask String String
  | CompleteTask String
  | ListTasks
  | EstimateProject String
  | DumpExamples
  deriving (Eq, Show)

type TaskName = String
data Task = Task { name :: TaskName, duration :: Int, subtasks :: [TaskName] }
  deriving Show

type TaskDB = [Task]


examples :: [Command]
examples =
  [ CreateTask "Project" 120
  , CreateTask "API" 50
  , AddSubtask "Project" "API"
  , EstimateProject "Project"
  ]
