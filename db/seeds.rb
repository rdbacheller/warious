# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#series = Series.create(:title => 'Weird Gear', :author => 'rbacheller', :last_updated_by => 'rbacheller')
#series = Series.create(:title => 'General', :author => 'rbacheller', :last_updated_by => 'rbacheller')
#series = Series.create(:title => 'Logs', :author => 'rbacheller', :last_updated_by => 'rbacheller')
#series = Series.create(:title => 'Notes', :author => 'rbacheller', :last_updated_by => 'rbacheller')

user = User.create(:username => 'rdbacheller', :password => 'SomeHashedPassword', :email => 'rd.bacheller@gmail.com', :ip => '127.0.0.1', :priv => '8', :flag => '8', :last_updated_by => 'kami')

post = Post.create(:title => 'A Lil Something About Hitler', :author => 'rdbacheller', :catagory => 'Article', :url => '\\posts\\hitler',
                   :caption => "Hitler was a decorated veteran of World War I. He joined the precursor of the NSDAP, the German Workers' Party, in 1919 and became leader of the NSDAP in 1921. In 1923 he attempted a coup in Munich to seize power.",
                   :body => "Adolf Hitler (20 April 1889 – 30 April 1945) was an Austrian-born German politician who was the leader of the Nazi Party (NSDAP), Chancellor of Germany from 1933 to 1945, and Führer (\"leader\") of Nazi Germany from 1934 to 1945. As effective dictator of Nazi Germany, Hitler was at the centre of World War II in Europe and the Holocaust.

Hitler was a decorated veteran of World War I. He joined the precursor of the NSDAP, the German Workers' Party, in 1919 and became leader of the NSDAP in 1921. In 1923 he attempted a coup in Munich to seize power. The failed coup resulted in Hitler's imprisonment, during which time he dictated his autobiography and political manifesto Mein Kampf (\"My Struggle\"). After his release in 1924, Hitler gained popular support by attacking the Treaty of Versailles and promoting Pan-Germanism, anti-Semitism, and anti-communism with charismatic oratory and Nazi propaganda. Hitler frequently denounced international capitalism and communism as being part of a Jewish conspiracy.

Hitler's Nazi Party became the largest elected party in the German Reichstag, leading to his appointment as chancellor in 1933. Following fresh elections won by his coalition, the Reichstag passed the Enabling Act, which began the process of transforming the Weimar Republic into Nazi Germany, a single-party dictatorship based on the totalitarian and autocratic ideology of National Socialism. Hitler aimed to eliminate Jews from Germany and establish a New Order to counter what he saw as the injustice of the post-World War I international order dominated by Britain and France. His first six years in power resulted in rapid economic recovery from the Great Depression, the denunciation of restrictions imposed on Germany after World War I, and the annexation of territories that were home to millions of ethnic Germans—actions which gave him significant popular support.

Hitler sought Lebensraum (\"living space\") for the German people. His aggressive foreign policy is considered to be the primary cause of the outbreak of World War II in Europe. He directed large-scale rearmament and on 1 September 1939 invaded Poland, resulting in British and French declarations of war on Germany. In June 1941, Hitler ordered an invasion of the Soviet Union. By the end of 1941 German forces and the European Axis powers occupied most of Europe and North Africa. Failure to defeat the Soviets and the entry of the United States into the war forced Germany onto the defensive and it suffered a series of escalating defeats. In the final days of the war, during the Battle of Berlin in 1945, Hitler married his long-time lover, Eva Braun. On 30 April 1945, less than two days later, the two committed suicide to avoid capture by the Red Army, and their corpses were burned.

Under Hitler's leadership and racially motivated ideology, the Nazi regime was responsible for the genocide of at least 5.5 million Jews and millions of other victims whom he and his followers deemed Untermenschen (\"sub-humans\") and socially undesirable. Hitler and the Nazi regime were also responsible for the killing of an estimated 19.3 million civilians and prisoners of war. In addition, 29 million soldiers and civilians died as a result of military action in the European Theatre of World War II. The number of civilians killed during the Second World War was unprecedented in warfare, and constitutes the deadliest conflict in human history.",
                   :last_updated_by => 'kami')