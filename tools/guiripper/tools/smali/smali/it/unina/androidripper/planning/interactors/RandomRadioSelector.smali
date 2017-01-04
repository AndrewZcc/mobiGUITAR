.class public Lit/unina/androidripper/planning/interactors/RandomRadioSelector;
.super Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;
.source "RandomRadioSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "radioGroup"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;-><init>([Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;)V
    .locals 0
    .parameter "theAbstractor"

    .prologue
    .line 21
    invoke-direct {p0}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;I)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "minValue"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .line 31
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->setMin(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;II)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .line 41
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->setMin(I)V

    .line 42
    invoke-virtual {p0, p3}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->setMax(I)V

    .line 43
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;II[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "minValue"
    .parameter "maxValue"
    .parameter "simpleTypes"

    .prologue
    .line 46
    invoke-direct {p0, p1, p4}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->setMin(I)V

    .line 48
    invoke-virtual {p0, p3}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->setMax(I)V

    .line 49
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "minValue"
    .parameter "simpleTypes"

    .prologue
    .line 35
    invoke-direct {p0, p1, p3}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->setMin(I)V

    .line 37
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 2
    .parameter "w"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->getMin(Lcom/nofatclips/androidtesting/model/WidgetState;)I

    move-result v0

    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->getMax(Lcom/nofatclips/androidtesting/model/WidgetState;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v0

    goto :goto_0
.end method

.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "selectRadioItem"

    return-object v0
.end method

.method public getMax(Lcom/nofatclips/androidtesting/model/WidgetState;)I
    .locals 1
    .parameter "w"

    .prologue
    .line 68
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getCount()I

    move-result v0

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
