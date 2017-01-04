.class public Lit/unina/androidripper/planning/interactors/RandomListSelector;
.super Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;
.source "RandomListSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "listView"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;-><init>([Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;-><init>([Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "selectListItem"

    return-object v0
.end method
