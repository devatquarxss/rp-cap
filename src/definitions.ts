export interface rpPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
