.class public abstract Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;
.super Lit/unina/androidripper/planning/adapters/InteractorAdapter;
.source "RandomInteractorAdapter.java"

# interfaces
.implements Lit/unina/androidripper/planning/adapters/RandomInteractor;


# instance fields
.field private max:I

.field private min:I

.field private random:Ljava/util/Random;


# direct methods
.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 1
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->min:I

    .line 14
    const/16 v0, 0x63

    iput v0, p0, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->max:I

    .line 22
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "simpleTypes"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->min:I

    .line 14
    const/16 v0, 0x63

    iput v0, p0, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->max:I

    .line 18
    return-void
.end method


# virtual methods
.method public getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 3
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
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getValue(Lcom/nofatclips/androidtesting/model/WidgetState;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 3
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
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getValue(Lcom/nofatclips/androidtesting/model/WidgetState;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->max:I

    return v0
.end method

.method public getMax(Lcom/nofatclips/androidtesting/model/WidgetState;)I
    .locals 1
    .parameter "w"

    .prologue
    .line 58
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getMax()I

    move-result v0

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->min:I

    return v0
.end method

.method public getMin(Lcom/nofatclips/androidtesting/model/WidgetState;)I
    .locals 1
    .parameter "w"

    .prologue
    .line 62
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getMin()I

    move-result v0

    return v0
.end method

.method public getRandomGenerator()Ljava/util/Random;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->random:Ljava/util/Random;

    return-object v0
.end method

.method public getValue()I
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getRandomGenerator()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getMin()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue(Lcom/nofatclips/androidtesting/model/WidgetState;)I
    .locals 3
    .parameter "w"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getMax(Lcom/nofatclips/androidtesting/model/WidgetState;)I

    move-result v1

    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getMin(Lcom/nofatclips/androidtesting/model/WidgetState;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 71
    .local v0, delta:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getRandomGenerator()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getMin(Lcom/nofatclips/androidtesting/model/WidgetState;)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->getMin(Lcom/nofatclips/androidtesting/model/WidgetState;)I

    move-result v1

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 38
    iput p1, p0, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->max:I

    .line 39
    return-void
.end method

.method public setMin(I)V
    .locals 0
    .parameter "min"

    .prologue
    .line 34
    iput p1, p0, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->min:I

    .line 35
    return-void
.end method

.method public setMinMax(II)V
    .locals 0
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 42
    if-le p1, p2, :cond_0

    .line 43
    invoke-virtual {p0, p2, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->setMinMax(II)V

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->setMin(I)V

    .line 46
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->setMax(I)V

    .line 47
    return-void
.end method

.method public setRandomGenerator(Ljava/util/Random;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 26
    iput-object p1, p0, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->random:Ljava/util/Random;

    .line 27
    return-void
.end method
