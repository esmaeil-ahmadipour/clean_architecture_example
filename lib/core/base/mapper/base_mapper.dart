abstract class BaseMapper<Model, Entity> {
  Entity toEntity(Model model);

  Model toModel(Entity entity);
}
