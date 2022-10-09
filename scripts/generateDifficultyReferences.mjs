/**
 * 사용 방법
 * 1. 포럼 시트에 간다
 * 2. Difficulty Reference에 간다
 * 3. 레퍼런스 부분을 복사해서 difficultyReference.txt 파일에 넣는다
 * 4. node generateDifficultyReferences.mjs 명령어를 입력한다
 */

import fs from 'fs'

const content = (
  await fs.promises.readFile('difficultyReference.txt')
).toString()

/**
 * @type {string[][]}
 */
const references = content.split('\n').map((x) => x.split('\t'))

const result = []

const levelRegex = /(?:#(\d+)\.(?: )?)?(.+)/

/**
 * @param {string} str The string to parse
 */
const parseLevel = (str) => {
  const matches = str.match(levelRegex)

  if (!matches[2]) throw new Error('Level name not found')

  if (matches[1]) {
    return {
      levelId: parseInt(matches[1]),
      name: matches[2],
      url: null,
    }
  }
  return {
    levelId: null,
    name: matches[2],
    url: '>>>>>CHANGE THIS<<<<<',
  }
}

for (const reference of references) {
  let [
    difficulty,
    standardLevel1,
    standardLevel2,
    standardLevel3,
    easiestLevel,
  ] = reference

  difficulty = Number(difficulty.replace('+', '.5'))

  const add = (level, position, easiestLevel = false) => {
    result.push({
      difficulty,
      position,
      easiestLevel,
      level,
    })
  }

  if (standardLevel1) add(parseLevel(standardLevel1), 0)
  if (standardLevel2) add(parseLevel(standardLevel2), 1)
  if (standardLevel3) add(parseLevel(standardLevel3), 2)
  if (easiestLevel && easiestLevel !== 'N/A')
    add(parseLevel(easiestLevel), 0, true)
}

await fs.promises.writeFile(
  'difficultyReference.json',
  JSON.stringify(result, null, 2)
)
