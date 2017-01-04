.class public Lit/unina/androidripper/planning/interactors/ListLongClicker;
.super Lit/unina/androidripper/planning/interactors/ListSelector;
.source "ListLongClicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "maxItems"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(I)V

    .line 18
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .parameter "maxItems"
    .parameter "simpleTypes"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(I[Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;)V
    .locals 0
    .parameter "theAbstractor"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;I)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "maxItems"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(Lit/unina/androidripper/model/Abstractor;I)V

    .line 34
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "maxItems"
    .parameter "simpleTypes"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>([Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "longClickListItem"

    return-object v0
.end method
