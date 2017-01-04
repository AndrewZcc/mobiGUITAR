.class public Lit/unina/androidripper/strategy/comparator/NameComparator;
.super Ljava/lang/Object;
.source "NameComparator.java"

# interfaces
.implements Lit/unina/androidripper/model/Comparator;


# instance fields
.field protected byName:Z

.field protected byTitle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lit/unina/androidripper/strategy/comparator/NameComparator;-><init>(Z)V

    .line 15
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .parameter "byName"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v1, "androidripper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparation by name is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput-boolean p1, p0, Lit/unina/androidripper/strategy/comparator/NameComparator;->byName:Z

    .line 20
    const-string v1, "androidripper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparation by title is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lit/unina/androidripper/strategy/comparator/NameComparator;->compareByTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enabled"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-boolean v0, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARE_STATE_TITLE:Z

    iput-boolean v0, p0, Lit/unina/androidripper/strategy/comparator/NameComparator;->byTitle:Z

    .line 22
    return-void

    .line 18
    :cond_0
    const-string v0, "disabled"

    goto :goto_0

    .line 20
    :cond_1
    const-string v0, "disabled"

    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/nofatclips/androidtesting/model/ActivityState;Lcom/nofatclips/androidtesting/model/ActivityState;)Z
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    iget-boolean v2, p0, Lit/unina/androidripper/strategy/comparator/NameComparator;->byTitle:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lit/unina/androidripper/strategy/comparator/NameComparator;->byName:Z

    if-nez v2, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    iget-boolean v2, p0, Lit/unina/androidripper/strategy/comparator/NameComparator;->byTitle:Z

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/ActivityState;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 28
    :cond_2
    iget-boolean v2, p0, Lit/unina/androidripper/strategy/comparator/NameComparator;->byName:Z

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public compareByTitle()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lit/unina/androidripper/strategy/comparator/NameComparator;->byTitle:Z

    return v0
.end method

.method public describe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "null"

    return-object v0
.end method
