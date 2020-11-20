module.exports = {
    preset: 'ts-jest',
    transform: {
      '^.+\\.tsx?$': 'babel-jest',
    },
    reporters: [
        "default",
          [ "jest-junit", { suiteName: "jest tests" } ]
    ]
  }