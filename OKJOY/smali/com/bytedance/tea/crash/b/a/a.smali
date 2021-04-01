.class public Lcom/bytedance/tea/crash/b/a/a;
.super Ljava/lang/Object;
.source "DuplicateLog.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/tea/crash/b/a/a;
    .registers 5

    .prologue
    .line 10
    new-instance v0, Lcom/bytedance/tea/crash/b/a/a;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/b/a/a;-><init>()V

    .line 11
    iput-object p0, v0, Lcom/bytedance/tea/crash/b/a/a;->a:Ljava/lang/String;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/tea/crash/b/a/a;->b:J

    .line 13
    return-object v0
.end method
