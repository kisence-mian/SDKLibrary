.class public interface abstract Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_FN:I = 0x1

.field public static final TYPE_SY:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_YD:I = 0x2


# virtual methods
.method public abstract apkType()I
.end method

.method public abstract getPatchApk(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSrcApkMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract processChannel(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method
