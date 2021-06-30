const welcome = (number, groupname) => {
    return `Ei @${number} seja bem vindo ao gp ${groupname}`
}
exports.welcome = welcome

const bye = (number) => {
    return `Adeus @${number}. Já vai tarde 👋`
}
exports.bye = bye
