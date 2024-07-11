.class public Lcom/umeng/analytics/pro/bf;
.super Lcom/umeng/analytics/pro/bd;
.source "MapMetaData.java"


# instance fields
.field public final a:Lcom/umeng/analytics/pro/bd;

.field public final c:Lcom/umeng/analytics/pro/bd;


# direct methods
.method public constructor <init>(BLcom/umeng/analytics/pro/bd;Lcom/umeng/analytics/pro/bd;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    .line 29
    iput-object p2, p0, Lcom/umeng/analytics/pro/bf;->a:Lcom/umeng/analytics/pro/bd;

    .line 30
    iput-object p3, p0, Lcom/umeng/analytics/pro/bf;->c:Lcom/umeng/analytics/pro/bd;

    .line 31
    return-void
.end method
