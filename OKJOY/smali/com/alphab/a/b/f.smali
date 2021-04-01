.class public abstract Lcom/alphab/a/b/f;
.super Lcom/alphab/a/b/a;
.source "SCReqPKGAndReportResHandler.java"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alphab/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alphab/a/b/a;->a()V

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alphab/a/b/f;->a:J

    .line 31
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 14
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    return-void
.end method
