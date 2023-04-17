const sqlite = require('sqlite');
const sqlite3 = require('sqlite3');

async function setup() {
    const db = await sqlite.open({
        filename: './mydb.sqlite',
        driver: sqlite3.Database,
    });
    await db.migrate({ force: 'last' });

    const people = await db.all('SELECT * FROM Person');
    console.log('TEST', JSON.stringify(people, null, 3));
}

setup();
