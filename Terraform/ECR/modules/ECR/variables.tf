variable "andromeda_repo" {
    description = "Repository Data"
    type = object({
        name = string
        image_tag_mutability = string
        scan_on_push = bool
        tags = object({
            Name = string
        })
    })
    default = {
        name = "andromeda_repo"
        image_tag_mutability = "IMMUTABLE"
        scan_on_push = true
        tags = {
            Name = "Andromeda Repository"
        }
    }
}