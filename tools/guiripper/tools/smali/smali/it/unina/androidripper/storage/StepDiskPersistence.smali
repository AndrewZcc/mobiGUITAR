.class public Lit/unina/androidripper/storage/StepDiskPersistence;
.super Lit/unina/androidripper/storage/DiskPersistence;
.source "StepDiskPersistence.java"

# interfaces
.implements Lit/unina/androidripper/model/SaveStateListener;


# static fields
.field public static final ACTOR_NAME:Ljava/lang/String; = "StepDiskPersistence"

.field public static final PARAM_NAME:Ljava/lang/String; = "footer"


# instance fields
.field private count:I

.field private first:Z

.field private footer:Ljava/lang/String;

.field private last:Z

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lit/unina/androidripper/storage/DiskPersistence;-><init>()V

    .line 156
    iput v2, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->step:I

    .line 157
    iput v1, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->count:I

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->footer:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->first:Z

    .line 160
    iput-boolean v1, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->last:Z

    .line 17
    invoke-static {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->registerForSavingState(Lit/unina/androidripper/model/SaveStateListener;)V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "theStep"

    .prologue
    .line 26
    invoke-direct {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lit/unina/androidripper/storage/StepDiskPersistence;->setStep(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/model/Session;)V
    .locals 3
    .parameter "theSession"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1}, Lit/unina/androidripper/storage/DiskPersistence;-><init>(Lcom/nofatclips/androidtesting/model/Session;)V

    .line 156
    iput v2, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->step:I

    .line 157
    iput v1, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->count:I

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->footer:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->first:Z

    .line 160
    iput-boolean v1, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->last:Z

    .line 22
    invoke-static {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->registerForSavingState(Lit/unina/androidripper/model/SaveStateListener;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/model/Session;I)V
    .locals 0
    .parameter "theSession"
    .parameter "theStep"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lit/unina/androidripper/storage/StepDiskPersistence;-><init>(Lcom/nofatclips/androidtesting/model/Session;)V

    .line 32
    invoke-virtual {p0, p2}, Lit/unina/androidripper/storage/StepDiskPersistence;->setStep(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lit/unina/androidripper/storage/DiskPersistence;->addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 42
    iget v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->count:I

    .line 43
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Will dump to disk at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->step:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->count:I

    iget v1, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->step:I

    if-ne v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->saveStep()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->count:I

    .line 48
    :cond_0
    return-void
.end method

.method public generate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->generateXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateXML()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 56
    invoke-super {p0}, Lit/unina/androidripper/storage/DiskPersistence;->generate()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, graph:Ljava/lang/String;
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->isFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->isLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    .end local v2           #graph:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 63
    .restart local v2       #graph:Ljava/lang/String;
    :cond_0
    const-string v3, "    <TRACE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, bodyBegin:I
    const-string v3, "/TRACE>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "/TRACE>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 67
    .local v1, bodyEnd:I
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->isFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->footer:Ljava/lang/String;

    .line 69
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->isLast()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    if-ne v0, v5, :cond_2

    iget-object v3, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->footer:Ljava/lang/String;

    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 77
    :cond_3
    if-eq v0, v5, :cond_4

    if-ne v1, v5, :cond_5

    .line 78
    :cond_4
    const-string v2, ""

    goto :goto_0

    .line 82
    :cond_5
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getListenerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "StepDiskPersistence"

    return-object v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->first:Z

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->last:Z

    return v0
.end method

.method public onLoadingState(Lit/unina/androidripper/model/SessionParams;)V
    .locals 3
    .parameter "sessionParams"

    .prologue
    .line 152
    const-string v0, "footer"

    invoke-virtual {p1, v0}, Lit/unina/androidripper/model/SessionParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->footer:Ljava/lang/String;

    .line 153
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup session footer restored to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->footer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public onSavingState()Lit/unina/androidripper/model/SessionParams;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lit/unina/androidripper/model/SessionParams;

    const-string v1, "footer"

    iget-object v2, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->footer:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/model/SessionParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/unina/androidripper/storage/StepDiskPersistence;->save(Z)V

    .line 109
    return-void
.end method

.method public save(Z)V
    .locals 2
    .parameter "last"

    .prologue
    .line 113
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->isFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x8000

    iput v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->mode:I

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->setLast()V

    .line 117
    const-string v0, "androidripper"

    const-string v1, "Saving the session on disk. This is the last batch. The session will be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    sget-boolean v0, Lit/unina/androidripper/Resources;->ENABLE_MODEL:Z

    if-eqz v0, :cond_2

    invoke-super {p0}, Lit/unina/androidripper/storage/DiskPersistence;->save()V

    .line 122
    :cond_2
    return-void
.end method

.method public saveStep()V
    .locals 4

    .prologue
    .line 87
    sget-boolean v2, Lit/unina/androidripper/Resources;->ENABLE_MODEL:Z

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "androidripper"

    const-string v3, "Saving the session on disk. This is the first batch: the file will be created."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->isLast()Z

    move-result v2

    invoke-virtual {p0, v2}, Lit/unina/androidripper/storage/StepDiskPersistence;->save(Z)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->getSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/Session;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nofatclips/androidtesting/model/Trace;

    .line 99
    .local v1, t:Lcom/nofatclips/androidtesting/model/Trace;
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->getSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nofatclips/androidtesting/model/Session;->removeTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    goto :goto_1

    .line 92
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/nofatclips/androidtesting/model/Trace;
    :cond_1
    const-string v2, "androidripper"

    const-string v3, "Saving the session on disk."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lit/unina/androidripper/storage/StepDiskPersistence;->setNotFirst()V

    .line 103
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 104
    return-void
.end method

.method public setLast()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->last:Z

    .line 138
    return-void
.end method

.method public setNotFirst()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->first:Z

    .line 134
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .parameter "theStep"

    .prologue
    .line 36
    iput p1, p0, Lit/unina/androidripper/storage/StepDiskPersistence;->step:I

    .line 37
    return-void
.end method
