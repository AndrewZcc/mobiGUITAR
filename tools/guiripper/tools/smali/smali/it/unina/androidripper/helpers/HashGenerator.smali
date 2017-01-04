.class public Lit/unina/androidripper/helpers/HashGenerator;
.super Ljava/lang/Object;
.source "HashGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
