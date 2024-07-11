.class public final Lcom/umeng/analytics/pro/bu;
.super Ljava/lang/Object;
.source "TStruct.java"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bu;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/umeng/analytics/pro/bu;->a:Ljava/lang/String;

    .line 33
    return-void
.end method
