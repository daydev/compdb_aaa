import sbt._
import Keys._
import play.Project._

object ApplicationBuild extends Build {

  val appName = "computer-database-aaa"
  val appVersion = "1.0-SNAPSHOT"

  val akkaVersion = "2.2.3"

  val akka = "com.typesafe.akka" %% "akka-actor" % akkaVersion
  val akkaTest = "com.typesafe.akka" %% "akka-testkit" % akkaVersion
  val mockito = "org.mockito" % "mockito-core" % "1.9.0" % "test" withSources() withJavadoc()
  val playSlick = "com.typesafe.play" %% "play-slick" % "0.5.0.8"

  val appDependencies = Seq(
    akka,
    akkaTest,
    jdbc,
    mockito,
    playSlick
  )


  val main = play.Project(appName, appVersion, appDependencies).settings(
    playAssetsDirectories := Seq.empty[File],
    playAssetsDirectories <+= baseDirectory / "client/web",
    playAssetsDirectories <+= baseDirectory / "client/packages",
    scalaVersion := "2.10.3",
    resolvers := Seq(
      "Maven Central" at "http://repo1.maven.org/maven2/",
      "Typesafe Repository" at "http://repo.typesafe.com/typesafe/releases/",
      "Sonatype snapshots" at "https://oss.sonatype.org/content/repositories/snapshots"
    )
    // Add your own project settings here      
  )


}
            
