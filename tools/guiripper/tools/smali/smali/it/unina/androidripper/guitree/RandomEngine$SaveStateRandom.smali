.class Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;
.super Ljava/util/Random;
.source "RandomEngine.java"

# interfaces
.implements Lit/unina/androidripper/model/SaveStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/unina/androidripper/guitree/RandomEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveStateRandom"
.end annotation


# static fields
.field public static final ACTOR_NAME:Ljava/lang/String; = "RandomEngine"

.field private static final PARAM_NAME:Ljava/lang/String; = "randomState"


# instance fields
.field count:I

.field final synthetic this$0:Lit/unina/androidripper/guitree/RandomEngine;


# direct methods
.method public constructor <init>(Lit/unina/androidripper/guitree/RandomEngine;J)V
    .locals 1
    .parameter
    .parameter "seed"

    .prologue
    .line 114
    iput-object p1, p0, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;->this$0:Lit/unina/androidripper/guitree/RandomEngine;

    .line 115
    invoke-direct {p0, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;->count:I

    .line 117
    invoke-static {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->registerForSavingState(Lit/unina/androidripper/model/SaveStateListener;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getListenerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "RandomEngine"

    return-object v0
.end method

.method public nextInt(I)I
    .locals 1
    .parameter "max"

    .prologue
    .line 137
    iget v0, p0, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;->count:I

    .line 138
    invoke-super {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public onLoadingState(Lit/unina/androidripper/model/SessionParams;)V
    .locals 4
    .parameter "sessionParams"

    .prologue
    .line 129
    const-string v1, "randomState"

    invoke-virtual {p1, v1}, Lit/unina/androidripper/model/SessionParams;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;->count:I

    .line 130
    const-string v1, "androidripper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restored random counter to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;->count:I

    if-ge v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;->nextInt()I

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public onSavingState()Lit/unina/androidripper/model/SessionParams;
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lit/unina/androidripper/model/SessionParams;

    const-string v1, "randomState"

    iget v2, p0, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;->count:I

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/model/SessionParams;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
