# site.pp
node 'nginx', 'nginx.test.gridsolut.de' {
    include nginx
}
