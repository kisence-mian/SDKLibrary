.class public Lcom/google/gson/util/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# static fields
.field private static final majorJavaVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/gson/util/VersionUtils;->determineMajorJavaVersion()I

    move-result v0

    sput v0, Lcom/google/gson/util/VersionUtils;->majorJavaVersion:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineMajorJavaVersion()I
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 27
    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[._]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 29
    .local v0, "firstVer":I
    if-ne v0, v4, :cond_1f

    array-length v2, v1

    if-le v2, v4, :cond_1f

    .line 30
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 32
    .end local v0    # "firstVer":I
    :cond_1f
    return v0
.end method

.method public static getMajorJavaVersion()I
    .registers 1

    .prologue
    .line 40
    sget v0, Lcom/google/gson/util/VersionUtils;->majorJavaVersion:I

    return v0
.end method

.method public static isJava9OrLater()Z
    .registers 2

    .prologue
    .line 47
    sget v0, Lcom/google/gson/util/VersionUtils;->majorJavaVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
