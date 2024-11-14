def dogker [] {
    [
        {
            condition: {|before, after| ($before != $after) and ($after | path join .env.yaml | path exists) }
            code: "
                echo 'loading env'; 
                open .env.yaml | load-env
            "
        }
        {
            condition: {|before, after| ($before != $after) and ($after | path join '.env' | path exists) }
            code: "
                echo 'loading env';
                open .env
                | lines
                | parse -r '(?P<k>.+?)=(?P<v>.+)'
                | reduce -f {} {|x, acc| $acc | upsert $x.k $x.v}
                | load-env
            "
        }
    ]
}