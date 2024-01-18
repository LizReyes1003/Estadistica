
#Proyecto de investigación: Desarrollo del pensamiento crítico
#a través de la metodología Aprendizaje Servicio desde la 
#perspectiva del profesorado de 6° de Educación Primaria.

#Integrantes: 
#Kevin Jaciel Bautista Antonio
#Juan de Dios Popo Sánchez
#Diana Lizeth Reyes García 
#Cielo Darlene Barrios Mixteco


#NUBE DE PALABRAS POR PREGUNTA

#En primer lugar se instalan las paquetería y 
#se abren las librerías.

library(tidytext)
library(RColorBrewer)
library(wordcloud)
library(dplyr)
library(csv)



#Pregunta 1

#1.- Se exporta la matriz de datos con extención .csv 
textos1<-read.csv("texto1.csv")
head(textos1)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stop_words.csv")
View(stop_words)


#3.- limpieza y generacion de nuevo texto

word_freq1 <- textos1 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word) 
# devuelve la frecuencia de palabras

View(word_freq1)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#4.- Creacion de nube de palabras
wordcloud(words = word_freq1$word,
          freq = word_freq1$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("Green","blue", "pink"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)

#Pregunta 2

#1.- Se exporta la matriz de datos con extención .csv 
textos2<-read.csv("texto2.csv")
head(textos2)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stop_words.csv")
View(stop_words)

#3.- limpieza y generacion de nuevo texto

word_freq2 <- textos2 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word) 
# devuelve la frecuencia de palabras

View(word_freq2)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#4.- Creacion de nube de palabras
wordcloud(words = word_freq2$word,
          freq = word_freq2$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("Green","steelblue4", "violetred3"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)


#Pregunta 3

#1.- Se exporta la matriz de datos con extención .csv 
textos3<-read.csv("texto3.csv")
head(textos3)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stop_words.csv")
View(stop_words)

#3.- limpieza y generacion de nuevo texto

word_freq3 <- textos3 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word) 
# devuelve la frecuencia de palabras

View(word_freq3)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#4.- Creacion de nube de palabras
wordcloud(words = word_freq3$word,
          freq = word_freq3$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("Green","darkorange2", "darkorchid3"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)


#Pregunta 4

#1.- Se exporta la matriz de datos con extención .csv 
textos4<-read.csv("texto4.csv")
head(textos4)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stop_words.csv")
View(stop_words)

#3.- limpieza y generacion de nuevo texto

word_freq4 <- textos4 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word) 
# devuelve la frecuencia de palabras

View(word_freq4)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#4.- Creacion de nube de palabras
wordcloud(words = word_freq4$word,
          freq = word_freq4$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("indianred","lightslateblue", "darkgreen"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)


#Pregunta 5

#1.- Se exporta la matriz de datos con extención .csv 
textos5<-read.csv("texto5.csv")
head(textos5)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stop_words.csv")
View(stop_words)

#3.- limpieza y generacion de nuevo texto

word_freq5 <- textos5 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word) 
# devuelve la frecuencia de palabras

View(word_freq5)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#4.- Creacion de nube de palabras
wordcloud(words = word_freq5$word,
          freq = word_freq5$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("goldenrod3","darkgreen", "red"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)


#Pregunta 6

#1.- Se exporta la matriz de datos con extención .csv 
textos6<-read.csv("texto6.csv")
head(textos6)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stop_words.csv")
View(stop_words)

#3.- limpieza y generacion de nuevo texto

word_freq6 <- textos6 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word) 
# devuelve la frecuencia de palabras

View(word_freq6)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#4.- Creacion de nube de palabras
wordcloud(words = word_freq6$word,
          freq = word_freq6$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("Green","olivedrab3", "magenta3"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)


#Pregunta 7

#1.- Se exporta la matriz de datos con extención .csv 
textos7<-read.csv("texto7.csv")
head(textos7)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stop_words.csv")
View(stop_words)

#3.- limpieza y generacion de nuevo texto

word_freq7 <- textos7 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word) 
# devuelve la frecuencia de palabras

View(word_freq7)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#4.- Creacion de nube de palabras
wordcloud(words = word_freq7$word,
          freq = word_freq7$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("pink","sienna1", "royalblue3"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)

