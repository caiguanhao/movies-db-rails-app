class Like < Socialization::ActiveRecordStores::Like
  validates_inclusion_of :like_type, allow_nil: true, in: Movie::LIKE_TYPES.keys, if: Proc.new { |like| like.likeable_type == "Movie" }
end
