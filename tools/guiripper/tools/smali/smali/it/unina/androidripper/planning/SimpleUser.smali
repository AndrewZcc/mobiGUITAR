.class public Lit/unina/androidripper/planning/SimpleUser;
.super Ljava/lang/Object;
.source "SimpleUser.java"

# interfaces
.implements Lit/unina/androidripper/model/UserAdapter;


# instance fields
.field private abs:Lit/unina/androidripper/model/Abstractor;

.field private eventTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lit/unina/androidripper/model/Interactor;",
            ">;"
        }
    .end annotation
.end field

.field private inputTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lit/unina/androidripper/model/Interactor;",
            ">;"
        }
    .end annotation
.end field

.field private randomGenerator:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/SimpleUser;-><init>(Ljava/util/Random;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 19
    invoke-direct {p0}, Lit/unina/androidripper/planning/SimpleUser;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/SimpleUser;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;Ljava/util/Random;)V
    .locals 0
    .parameter "a"
    .parameter "r"

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lit/unina/androidripper/planning/SimpleUser;-><init>(Ljava/util/Random;)V

    .line 31
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/SimpleUser;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/planning/SimpleUser;->eventTypes:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/planning/SimpleUser;->inputTypes:Ljava/util/List;

    .line 26
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/SimpleUser;->setRandomGenerator(Ljava/util/Random;)V

    .line 27
    return-void
.end method


# virtual methods
.method public varargs addEvent([Lit/unina/androidripper/model/Interactor;)V
    .locals 5
    .parameter "events"

    .prologue
    .line 67
    move-object v0, p1

    .local v0, arr$:[Lit/unina/androidripper/model/Interactor;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 68
    .local v1, e:Lit/unina/androidripper/model/Interactor;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimpleUser;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v4

    invoke-interface {v1, v4}, Lit/unina/androidripper/model/Interactor;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 69
    iget-object v4, p0, Lit/unina/androidripper/planning/SimpleUser;->eventTypes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v1           #e:Lit/unina/androidripper/model/Interactor;
    :cond_0
    return-void
.end method

.method public varargs addInput([Lit/unina/androidripper/model/Interactor;)V
    .locals 6
    .parameter "inputs"

    .prologue
    .line 78
    move-object v0, p1

    .local v0, arr$:[Lit/unina/androidripper/model/Interactor;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 79
    .local v1, i:Lit/unina/androidripper/model/Interactor;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimpleUser;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v4

    invoke-interface {v1, v4}, Lit/unina/androidripper/model/Interactor;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 80
    instance-of v4, v1, Lit/unina/androidripper/planning/adapters/RandomInteractor;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 81
    check-cast v4, Lit/unina/androidripper/planning/adapters/RandomInteractor;

    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimpleUser;->getRandomGenerator()Ljava/util/Random;

    move-result-object v5

    invoke-interface {v4, v5}, Lit/unina/androidripper/planning/adapters/RandomInteractor;->setRandomGenerator(Ljava/util/Random;)V

    .line 83
    :cond_0
    iget-object v4, p0, Lit/unina/androidripper/planning/SimpleUser;->inputTypes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v1           #i:Lit/unina/androidripper/model/Interactor;
    :cond_1
    return-void
.end method

.method public getAbstractor()Lit/unina/androidripper/model/Abstractor;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lit/unina/androidripper/planning/SimpleUser;->abs:Lit/unina/androidripper/model/Abstractor;

    return-object v0
.end method

.method public getEventTypes()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lit/unina/androidripper/model/Interactor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lit/unina/androidripper/planning/SimpleUser;->eventTypes:Ljava/util/List;

    return-object v0
.end method

.method public getInputTypes()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lit/unina/androidripper/model/Interactor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lit/unina/androidripper/planning/SimpleUser;->inputTypes:Ljava/util/List;

    return-object v0
.end method

.method public getRandomGenerator()Ljava/util/Random;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lit/unina/androidripper/planning/SimpleUser;->randomGenerator:Ljava/util/Random;

    return-object v0
.end method

.method public handleEvent(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 4
    .parameter "w"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserEvent;>;"
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimpleUser;->getEventTypes()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/model/Interactor;

    .line 37
    .local v0, eventAdapter:Lit/unina/androidripper/model/Interactor;
    invoke-interface {v0, p1}, Lit/unina/androidripper/model/Interactor;->getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 39
    .end local v0           #eventAdapter:Lit/unina/androidripper/model/Interactor;
    :cond_0
    return-object v1
.end method

.method public handleInput(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 4
    .parameter "w"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, inputs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimpleUser;->getInputTypes()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/model/Interactor;

    .line 45
    .local v1, inputAdapter:Lit/unina/androidripper/model/Interactor;
    invoke-interface {v1, p1}, Lit/unina/androidripper/model/Interactor;->getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 47
    .end local v1           #inputAdapter:Lit/unina/androidripper/model/Interactor;
    :cond_0
    return-object v2
.end method

.method public setAbstractor(Lit/unina/androidripper/model/Abstractor;)V
    .locals 0
    .parameter "abs"

    .prologue
    .line 55
    iput-object p1, p0, Lit/unina/androidripper/planning/SimpleUser;->abs:Lit/unina/androidripper/model/Abstractor;

    .line 56
    return-void
.end method

.method public setRandomGenerator(Ljava/util/Random;)V
    .locals 0
    .parameter "randomGenerator"

    .prologue
    .line 63
    iput-object p1, p0, Lit/unina/androidripper/planning/SimpleUser;->randomGenerator:Ljava/util/Random;

    .line 64
    return-void
.end method
