.class public Lit/unina/androidripper/model/Plan;
.super Ljava/lang/Object;
.source "Plan.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/nofatclips/androidtesting/model/Transition;",
        ">;"
    }
.end annotation


# instance fields
.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/model/Plan;->tasks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 17
    iget-object v0, p0, Lit/unina/androidripper/model/Plan;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getTask(I)Lcom/nofatclips/androidtesting/model/Transition;
    .locals 1
    .parameter "task"

    .prologue
    .line 25
    iget-object v0, p0, Lit/unina/androidripper/model/Plan;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/Transition;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lit/unina/androidripper/model/Plan;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/Transition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lit/unina/androidripper/model/Plan;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeTask(I)V
    .locals 1
    .parameter "task"

    .prologue
    .line 29
    iget-object v0, p0, Lit/unina/androidripper/model/Plan;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lit/unina/androidripper/model/Plan;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
