.class public Lit/unina/androidripper/planning/interactors/Slider;
.super Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;
.source "Slider.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "seekBar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ratingBar"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/Slider;-><init>([Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;)V
    .locals 0
    .parameter "theAbstractor"

    .prologue
    .line 22
    invoke-direct {p0}, Lit/unina/androidripper/planning/interactors/Slider;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/Slider;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;I)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "minValue"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/interactors/Slider;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .line 32
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/interactors/Slider;->setMin(I)V

    .line 33
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "minValue"
    .parameter "simpleTypes"

    .prologue
    .line 36
    invoke-direct {p0, p1, p3}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/interactors/Slider;->setMin(I)V

    .line 38
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "setBar"

    return-object v0
.end method

.method public getMax(Lcom/nofatclips/androidtesting/model/WidgetState;)I
    .locals 1
    .parameter "w"

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getCount()I

    move-result v0

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
