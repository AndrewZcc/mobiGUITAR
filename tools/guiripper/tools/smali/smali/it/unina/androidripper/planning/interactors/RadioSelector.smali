.class public Lit/unina/androidripper/planning/interactors/RadioSelector;
.super Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;
.source "RadioSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "radioGroup"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/RadioSelector;-><init>([Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "maxItems"

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "radioGroup"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/RadioSelector;-><init>(I[Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .parameter "maxItems"
    .parameter "simpleTypes"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(I[Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;)V
    .locals 3
    .parameter "theAbstractor"

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "radioGroup"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/RadioSelector;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;I)V
    .locals 3
    .parameter "theAbstractor"
    .parameter "maxItems"

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "radioGroup"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lit/unina/androidripper/planning/interactors/RadioSelector;-><init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "maxItems"
    .parameter "simpleTypes"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "selectRadioItem"

    return-object v0
.end method
