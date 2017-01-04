.class public Lcom/jayway/android/robotium/solo/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field private static largeTimeout:I

.field private static smallTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLargeTimeout()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/jayway/android/robotium/solo/Timeout;->largeTimeout:I

    return v0
.end method

.method public static getSmallTimeout()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/jayway/android/robotium/solo/Timeout;->smallTimeout:I

    return v0
.end method

.method public static setLargeTimeout(I)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    .line 29
    sput p0, Lcom/jayway/android/robotium/solo/Timeout;->largeTimeout:I

    .line 30
    return-void
.end method

.method public static setSmallTimeout(I)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    .line 42
    sput p0, Lcom/jayway/android/robotium/solo/Timeout;->smallTimeout:I

    .line 43
    return-void
.end method
