.class public Lit/unina/androidripper/planning/AlternativeUser;
.super Lit/unina/androidripper/planning/SimpleUser;
.source "AlternativeUser.java"


# direct methods
.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/SimpleUser;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .line 14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;Ljava/util/Random;)V
    .locals 1
    .parameter "a"
    .parameter "random"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/SimpleUser;-><init>(Lit/unina/androidripper/model/Abstractor;Ljava/util/Random;)V

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
