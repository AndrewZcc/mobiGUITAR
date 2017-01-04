.class public Lit/unina/androidripper/storage/ResumingPersistence;
.super Lit/unina/androidripper/storage/StepDiskPersistence;
.source "ResumingPersistence.java"

# interfaces
.implements Lit/unina/androidripper/model/DispatchListener;
.implements Lit/unina/androidripper/model/StateDiscoveryListener;
.implements Lit/unina/androidripper/model/TerminationListener;


# instance fields
.field private activityFile:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lit/unina/androidripper/model/SessionParams;",
            ">;"
        }
    .end annotation
.end field

.field private parametersFile:Ljava/lang/String;

.field private stateFile:Ljava/io/FileOutputStream;

.field private stateStream:Ljava/io/OutputStreamWriter;

.field private taskFile:Ljava/io/FileOutputStream;

.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private taskListFile:Ljava/lang/String;

.field private taskStream:Ljava/io/OutputStreamWriter;

.field private theListeners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lit/unina/androidripper/model/SaveStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lit/unina/androidripper/storage/StepDiskPersistence;-><init>(I)V

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->parameters:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->theListeners:Ljava/util/Hashtable;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/model/Session;)V
    .locals 1
    .parameter "theSession"

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lit/unina/androidripper/storage/StepDiskPersistence;-><init>(Lcom/nofatclips/androidtesting/model/Session;I)V

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->parameters:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->theListeners:Ljava/util/Hashtable;

    .line 42
    return-void
.end method


# virtual methods
.method public addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/Trace;->setFailed(Z)V

    .line 47
    invoke-super {p0, p1}, Lit/unina/androidripper/storage/StepDiskPersistence;->addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 48
    return-void
.end method

.method public backup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "original"

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public backupFile(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/storage/ResumingPersistence;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public canHasResume()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const-string v1, "androidripper"

    const-string v2, "No session to resume: GUI Tree not found. Will start from scratch."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getActivityFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Cannot resume previous session: state list not found."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getTaskListFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const-string v1, "androidripper"

    const-string v2, "Restoring backup of the task list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getTaskListFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->restoreFile(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getActivityFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v1, "androidripper"

    const-string v2, "Restoring backup of the activity list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getActivityFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->restoreFile(Ljava/lang/String;)V

    .line 121
    :cond_2
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getTaskListFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 122
    const-string v1, "androidripper"

    const-string v2, "No session to resume: task list not found. Will start from scratch."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeStateFile()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->stateFile:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->stateStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, v0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->closeFile(Ljava/io/FileOutputStream;Ljava/io/OutputStreamWriter;)V

    .line 327
    return-void
.end method

.method public closeTaskFile()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskFile:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, v0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->closeFile(Ljava/io/FileOutputStream;Ljava/io/OutputStreamWriter;)V

    .line 323
    return-void
.end method

.method public getActivityFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->activityFile:Ljava/lang/String;

    return-object v0
.end method

.method public getParametersFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->parametersFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskListFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskListFile:Ljava/lang/String;

    return-object v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->noTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadParameters()V
    .locals 9

    .prologue
    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, theFile:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 170
    .local v4, theStream:Ljava/io/ObjectInputStream;
    :try_start_0
    iget-object v6, p0, Lit/unina/androidripper/storage/ResumingPersistence;->w:Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getParametersFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContextWrapper;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 171
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 172
    .end local v4           #theStream:Ljava/io/ObjectInputStream;
    .local v5, theStream:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iput-object v6, p0, Lit/unina/androidripper/storage/ResumingPersistence;->parameters:Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 179
    .end local v5           #theStream:Ljava/io/ObjectInputStream;
    .restart local v4       #theStream:Ljava/io/ObjectInputStream;
    :goto_0
    iget-object v6, p0, Lit/unina/androidripper/storage/ResumingPersistence;->theListeners:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 180
    .local v2, listener:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lit/unina/androidripper/model/SaveStateListener;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lit/unina/androidripper/model/SaveStateListener;

    iget-object v7, p0, Lit/unina/androidripper/storage/ResumingPersistence;->parameters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lit/unina/androidripper/model/SessionParams;

    invoke-interface {v6, v7}, Lit/unina/androidripper/model/SaveStateListener;->onLoadingState(Lit/unina/androidripper/model/SessionParams;)V

    goto :goto_1

    .line 173
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lit/unina/androidripper/model/SaveStateListener;>;"
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 182
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    return-void

    .line 177
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v4           #theStream:Ljava/io/ObjectInputStream;
    .restart local v5       #theStream:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v6

    move-object v4, v5

    .end local v5           #theStream:Ljava/io/ObjectInputStream;
    .restart local v4       #theStream:Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 175
    .end local v4           #theStream:Ljava/io/ObjectInputStream;
    .restart local v5       #theStream:Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5           #theStream:Ljava/io/ObjectInputStream;
    .restart local v4       #theStream:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 173
    .end local v4           #theStream:Ljava/io/ObjectInputStream;
    .restart local v5       #theStream:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5           #theStream:Ljava/io/ObjectInputStream;
    .restart local v4       #theStream:Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method public noTasks()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewState(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 5
    .parameter "newState"

    .prologue
    .line 187
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getActivityFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lit/unina/androidripper/storage/ResumingPersistence;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const-string v2, "androidripper"

    const-string v3, "Performing backup of the old activity list on disk"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getActivityFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lit/unina/androidripper/storage/ResumingPersistence;->backupFile(Ljava/lang/String;)V

    .line 194
    :cond_0
    :try_start_0
    const-string v2, "androidripper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving new found state \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' on disk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    instance-of v2, p1, Lcom/nofatclips/androidtesting/guitree/FinalActivity;

    invoke-virtual {p0, v2}, Lit/unina/androidripper/storage/ResumingPersistence;->openStateFile(Z)V

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/nofatclips/androidtesting/xml/ElementWrapper;

    .end local p1
    invoke-virtual {p1}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->toXml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, xml:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/ResumingPersistence;->writeOnStateFile(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->closeStateFile()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 206
    .end local v1           #xml:Ljava/lang/String;
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljavax/xml/transform/TransformerFactoryConfigurationError;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v0           #e:Ljavax/xml/transform/TransformerFactoryConfigurationError;
    :catch_1
    move-exception v0

    .line 202
    .local v0, e:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v0           #e:Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v0

    .line 204
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onNewTaskAdded(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 50
    return-void
.end method

.method public onTaskDispatched(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/Trace;->setFailed(Z)V

    .line 54
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->saveTaskList()V

    .line 55
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->saveParameters()V

    .line 56
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    return-void
.end method

.method public openStateFile()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/unina/androidripper/storage/ResumingPersistence;->openStateFile(Z)V

    .line 300
    return-void
.end method

.method public openStateFile(Z)V
    .locals 4
    .parameter "append"

    .prologue
    .line 304
    :try_start_0
    const-string v2, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening state file in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v1, "append"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mode."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lit/unina/androidripper/storage/ResumingPersistence;->w:Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getActivityFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    const v1, 0x8000

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    iput-object v1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->stateFile:Ljava/io/FileOutputStream;

    .line 306
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lit/unina/androidripper/storage/ResumingPersistence;->stateFile:Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->stateStream:Ljava/io/OutputStreamWriter;

    .line 311
    :goto_2
    return-void

    .line 304
    :cond_0
    const-string v1, "overwrite"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public openTaskFile()V
    .locals 4

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->w:Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getTaskListFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    iput-object v1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskFile:Ljava/io/FileOutputStream;

    .line 291
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskFile:Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskStream:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readStateFile()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    const/4 v4, 0x0

    .line 274
    .local v4, theStream:Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v2, output:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "androidripper"

    const-string v7, "Reading state file"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :try_start_0
    iget-object v6, p0, Lit/unina/androidripper/storage/ResumingPersistence;->w:Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getActivityFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContextWrapper;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 278
    .local v3, theFile:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 279
    .end local v4           #theStream:Ljava/io/BufferedReader;
    .local v5, theStream:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 280
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 282
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 283
    .end local v3           #theFile:Ljava/io/FileInputStream;
    .end local v5           #theStream:Ljava/io/BufferedReader;
    .local v0, e:Ljava/lang/Exception;
    .restart local v4       #theStream:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2
    return-object v2

    .end local v4           #theStream:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #theFile:Ljava/io/FileInputStream;
    .restart local v5       #theStream:Ljava/io/BufferedReader;
    :cond_0
    move-object v4, v5

    .line 284
    .end local v5           #theStream:Ljava/io/BufferedReader;
    .restart local v4       #theStream:Ljava/io/BufferedReader;
    goto :goto_2

    .line 282
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #theFile:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public readTaskFile()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    const/4 v4, 0x0

    .line 255
    .local v4, theStream:Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v2, output:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "androidripper"

    const-string v7, "Reading task file"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    iget-object v6, p0, Lit/unina/androidripper/storage/ResumingPersistence;->w:Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getTaskListFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContextWrapper;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 259
    .local v3, theFile:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    .end local v4           #theStream:Ljava/io/BufferedReader;
    .local v5, theStream:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 261
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 263
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 264
    .end local v3           #theFile:Ljava/io/FileInputStream;
    .end local v5           #theStream:Ljava/io/BufferedReader;
    .local v0, e:Ljava/lang/Exception;
    .restart local v4       #theStream:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2
    return-object v2

    .end local v4           #theStream:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #theFile:Ljava/io/FileInputStream;
    .restart local v5       #theStream:Ljava/io/BufferedReader;
    :cond_0
    move-object v4, v5

    .line 265
    .end local v5           #theStream:Ljava/io/BufferedReader;
    .restart local v4       #theStream:Ljava/io/BufferedReader;
    goto :goto_2

    .line 263
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #theFile:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public registerListener(Lit/unina/androidripper/model/SaveStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 362
    iget-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->theListeners:Ljava/util/Hashtable;

    invoke-interface {p1}, Lit/unina/androidripper/model/SaveStateListener;->getListenerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    return-void
.end method

.method public restoreFile(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lit/unina/androidripper/storage/ResumingPersistence;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public save()V
    .locals 6

    .prologue
    .line 209
    invoke-super {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->save()V

    .line 210
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->saveParameters()V

    .line 211
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->saveTaskList()V

    .line 212
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->noTasks()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const-string v3, "androidripper"

    const-string v4, "Task list is empty: no resume needed. Deleting parameters and activity list from disk."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getActivityFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lit/unina/androidripper/storage/ResumingPersistence;->delete(Ljava/lang/String;)Z

    .line 215
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getParametersFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lit/unina/androidripper/storage/ResumingPersistence;->delete(Ljava/lang/String;)Z

    .line 216
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getParametersFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lit/unina/androidripper/storage/ResumingPersistence;->delete(Ljava/lang/String;)Z

    .line 217
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getTaskListFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lit/unina/androidripper/storage/ResumingPersistence;->delete(Ljava/lang/String;)Z

    .line 218
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getTaskListFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lit/unina/androidripper/storage/ResumingPersistence;->delete(Ljava/lang/String;)Z

    .line 224
    :try_start_0
    iget-object v3, p0, Lit/unina/androidripper/storage/ResumingPersistence;->w:Landroid/content/ContextWrapper;

    const-string v4, "closed.txt"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 225
    .local v1, fOut:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 226
    .local v2, osw:Ljava/io/OutputStreamWriter;
    const-string v3, "the end"

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 228
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 229
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 233
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public saveParameters()V
    .locals 9

    .prologue
    .line 141
    iget-object v6, p0, Lit/unina/androidripper/storage/ResumingPersistence;->parameters:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, theFile:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 145
    .local v4, theStream:Ljava/io/ObjectOutputStream;
    iget-object v6, p0, Lit/unina/androidripper/storage/ResumingPersistence;->theListeners:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    .local v2, listener:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lit/unina/androidripper/model/SaveStateListener;>;"
    iget-object v7, p0, Lit/unina/androidripper/storage/ResumingPersistence;->parameters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lit/unina/androidripper/model/SaveStateListener;

    invoke-interface {v6}, Lit/unina/androidripper/model/SaveStateListener;->onSavingState()Lit/unina/androidripper/model/SessionParams;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    .end local v2           #listener:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lit/unina/androidripper/model/SaveStateListener;>;"
    :cond_0
    :try_start_0
    iget-object v6, p0, Lit/unina/androidripper/storage/ResumingPersistence;->w:Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getParametersFileName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 151
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .end local v4           #theStream:Ljava/io/ObjectOutputStream;
    .local v5, theStream:Ljava/io/ObjectOutputStream;
    :try_start_1
    iget-object v6, p0, Lit/unina/androidripper/storage/ResumingPersistence;->parameters:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 158
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 159
    invoke-virtual {p0, v3, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->closeFile(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 162
    .end local v5           #theStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #theStream:Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 159
    invoke-virtual {p0, v3, v4}, Lit/unina/androidripper/storage/ResumingPersistence;->closeFile(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    goto :goto_1

    .line 155
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 159
    invoke-virtual {p0, v3, v4}, Lit/unina/androidripper/storage/ResumingPersistence;->closeFile(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    goto :goto_1

    .line 158
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 159
    invoke-virtual {p0, v3, v4}, Lit/unina/androidripper/storage/ResumingPersistence;->closeFile(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    :cond_2
    throw v6

    .line 158
    .end local v4           #theStream:Ljava/io/ObjectOutputStream;
    .restart local v5       #theStream:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #theStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #theStream:Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 155
    .end local v4           #theStream:Ljava/io/ObjectOutputStream;
    .restart local v5       #theStream:Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5           #theStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #theStream:Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 153
    .end local v4           #theStream:Ljava/io/ObjectOutputStream;
    .restart local v5       #theStream:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5           #theStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #theStream:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .end local v4           #theStream:Ljava/io/ObjectOutputStream;
    .restart local v5       #theStream:Ljava/io/ObjectOutputStream;
    :cond_3
    move-object v4, v5

    .end local v5           #theStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #theStream:Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method public saveTaskList()V
    .locals 8

    .prologue
    .line 60
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->noTasks()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    const-string v5, "androidripper"

    const-string v6, "Task list is empty. Deleting file from disk."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getTaskListFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->delete(Ljava/lang/String;)Z

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getTaskListFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 68
    const-string v5, "androidripper"

    const-string v6, "Performing backup of the old task list on disk"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->getTaskListFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->backupFile(Ljava/lang/String;)V

    .line 74
    :cond_2
    :try_start_0
    const-string v5, "androidripper"

    const-string v6, "Saving task list on disk"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->openTaskFile()V

    .line 76
    iget-object v5, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nofatclips/androidtesting/model/Trace;

    .line 77
    .local v3, task:Lcom/nofatclips/androidtesting/model/Trace;
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Backing up trace #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lcom/nofatclips/androidtesting/model/Trace;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to disk."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 79
    .local v4, xml:Ljava/lang/String;
    sget-boolean v5, Lit/unina/androidripper/storage/Resources;->ONLY_FINALTRANSITION:Z

    if-eqz v5, :cond_4

    .line 80
    invoke-interface {v3}, Lcom/nofatclips/androidtesting/model/Trace;->getFinalTransition()Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v2

    .line 81
    .local v2, support:Lcom/nofatclips/androidtesting/model/Transition;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Lcom/nofatclips/androidtesting/xml/ElementWrapper;

    .end local v2           #support:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-virtual {v2}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->toXml()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    .end local v3           #task:Lcom/nofatclips/androidtesting/model/Trace;
    :goto_2
    invoke-virtual {p0, v4}, Lit/unina/androidripper/storage/ResumingPersistence;->writeOnTaskFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 87
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #xml:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljavax/xml/transform/TransformerFactoryConfigurationError;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V

    .line 96
    .end local v0           #e:Ljavax/xml/transform/TransformerFactoryConfigurationError;
    :goto_3
    iget-object v5, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskListFile:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    const-string v5, "androidripper"

    const-string v6, "Deleting backup of the old task list from disk"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v5, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskListFile:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->delete(Ljava/lang/String;)Z

    .line 100
    :cond_3
    iget-object v5, p0, Lit/unina/androidripper/storage/ResumingPersistence;->activityFile:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    const-string v5, "androidripper"

    const-string v6, "Deleting backup of the old activity list from disk"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v5, p0, Lit/unina/androidripper/storage/ResumingPersistence;->activityFile:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->backup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lit/unina/androidripper/storage/ResumingPersistence;->delete(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 83
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #task:Lcom/nofatclips/androidtesting/model/Trace;
    .restart local v4       #xml:Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v3, Lcom/nofatclips/androidtesting/xml/ElementWrapper;

    .end local v3           #task:Lcom/nofatclips/androidtesting/model/Trace;
    invoke-virtual {v3}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->toXml()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 86
    .end local v4           #xml:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lit/unina/androidripper/storage/ResumingPersistence;->closeTaskFile()V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 89
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 90
    .local v0, e:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_3

    .line 91
    .end local v0           #e:Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public setActivityFile(Ljava/lang/String;)V
    .locals 0
    .parameter "activityFile"

    .prologue
    .line 342
    iput-object p1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->activityFile:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setParametersFile(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 350
    iput-object p1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->parametersFile:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setTaskList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, taskList:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/Trace;>;"
    iput-object p1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskList:Ljava/util/List;

    .line 335
    return-void
.end method

.method public setTaskListFile(Ljava/lang/String;)V
    .locals 0
    .parameter "taskListFile"

    .prologue
    .line 358
    iput-object p1, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskListFile:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public writeOnStateFile(Ljava/lang/String;)V
    .locals 1
    .parameter "graph"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->stateStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, v0, p1}, Lit/unina/androidripper/storage/ResumingPersistence;->writeOnFile(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public writeOnTaskFile(Ljava/lang/String;)V
    .locals 1
    .parameter "graph"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lit/unina/androidripper/storage/ResumingPersistence;->taskStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, v0, p1}, Lit/unina/androidripper/storage/ResumingPersistence;->writeOnFile(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 315
    return-void
.end method
