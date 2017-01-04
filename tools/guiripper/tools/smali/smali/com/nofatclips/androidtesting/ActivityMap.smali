.class public Lcom/nofatclips/androidtesting/ActivityMap;
.super Ljava/lang/Object;
.source "ActivityMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/nofatclips/androidtesting/model/ActivityState;",
        ">;"
    }
.end annotation


# instance fields
.field public activities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nofatclips/androidtesting/model/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field public doc:Lcom/nofatclips/androidtesting/guitree/GuiTree;


# direct methods
.method public constructor <init>(Lcom/nofatclips/androidtesting/guitree/GuiTree;)V
    .locals 1
    .parameter "theDoc"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/nofatclips/androidtesting/ActivityMap;->doc:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nofatclips/androidtesting/ActivityMap;->activities:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method public addActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 26
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/ActivityMap;->addActivity(Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 27
    return-void
.end method

.method public addActivity(Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 1
    .parameter "id"
    .parameter "t"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nofatclips/androidtesting/ActivityMap;->activities:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public getActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1
    .parameter "t"

    .prologue
    .line 38
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getDescriptionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/ActivityMap;->getActivity(Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getActivity(Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1
    .parameter "id"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nofatclips/androidtesting/ActivityMap;->activities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/ActivityState;

    return-object v0
.end method

.method public getNewSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;
    .locals 2

    .prologue
    .line 91
    :try_start_0
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-direct {v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 42
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getDescriptionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/ActivityMap;->hasActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasActivity(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nofatclips/androidtesting/ActivityMap;->activities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/ActivityState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nofatclips/androidtesting/ActivityMap;->activities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadActivities()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nofatclips/androidtesting/ActivityMap;->doc:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-virtual {v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getStateFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/ActivityMap;->loadActivities(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public loadActivities(Ljava/lang/String;)V
    .locals 7
    .parameter "stateFile"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/nofatclips/androidtesting/ActivityMap;->readStateFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/ActivityMap;->getNewSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v3

    .line 81
    .local v3, sandboxSession:Lcom/nofatclips/androidtesting/guitree/GuiTree;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    return-void

    .line 81
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    .local v4, state:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->parse(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 84
    .local v0, e:Lorg/w3c/dom/Element;
    invoke-virtual {v3, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->importState(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    move-result-object v2

    .line 85
    .local v2, s:Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    invoke-virtual {p0, v2}, Lcom/nofatclips/androidtesting/ActivityMap;->addActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    goto :goto_0
.end method

.method public readStateFile(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter "stateFileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v9, 0x0

    .line 53
    .local v9, theStream:Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v5, output:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 56
    .local v8, theFile:Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v9           #theStream:Ljava/io/BufferedReader;
    .local v10, theStream:Ljava/io/BufferedReader;
    const/4 v3, 0x1

    .line 58
    .local v3, first:Z
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    move-object v9, v10

    .line 69
    .end local v3           #first:Z
    .end local v4           #line:Ljava/lang/String;
    .end local v8           #theFile:Ljava/io/FileInputStream;
    .end local v10           #theStream:Ljava/io/BufferedReader;
    .restart local v9       #theStream:Ljava/io/BufferedReader;
    :goto_1
    return-object v5

    .line 59
    .end local v9           #theStream:Ljava/io/BufferedReader;
    .restart local v3       #first:Z
    .restart local v4       #line:Ljava/lang/String;
    .restart local v8       #theFile:Ljava/io/FileInputStream;
    .restart local v10       #theStream:Ljava/io/BufferedReader;
    :cond_0
    if-eqz v3, :cond_1

    const-string v1, "start_activity.dtd"

    .line 60
    .local v1, dtd:Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_2

    const-string v7, "START_ACTIVITY"

    .line 61
    .local v7, tag:Ljava/lang/String;
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "<"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, root:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "<!DOCTYPE "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PUBLIC \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, doctype:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const/4 v3, 0x0

    goto :goto_0

    .line 59
    .end local v0           #doctype:Ljava/lang/String;
    .end local v1           #dtd:Ljava/lang/String;
    .end local v6           #root:Ljava/lang/String;
    .end local v7           #tag:Ljava/lang/String;
    :cond_1
    const-string v1, "final_activity.dtd"

    goto :goto_2

    .line 60
    .restart local v1       #dtd:Ljava/lang/String;
    :cond_2
    const-string v7, "FINAL_ACTIVITY"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 66
    .end local v1           #dtd:Ljava/lang/String;
    .end local v3           #first:Z
    .end local v4           #line:Ljava/lang/String;
    .end local v8           #theFile:Ljava/io/FileInputStream;
    .end local v10           #theStream:Ljava/io/BufferedReader;
    .restart local v9       #theStream:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 67
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 66
    .end local v2           #e:Ljava/lang/Exception;
    .end local v9           #theStream:Ljava/io/BufferedReader;
    .restart local v3       #first:Z
    .restart local v8       #theFile:Ljava/io/FileInputStream;
    .restart local v10       #theStream:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    move-object v9, v10

    .end local v10           #theStream:Ljava/io/BufferedReader;
    .restart local v9       #theStream:Ljava/io/BufferedReader;
    goto :goto_4
.end method
