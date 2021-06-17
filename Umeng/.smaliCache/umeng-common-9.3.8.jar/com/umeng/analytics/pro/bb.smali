.class public Lcom/umeng/analytics/pro/bb;
.super Lcom/umeng/analytics/pro/bd;
.source "EnumMetaData.java"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/au;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BLjava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/au;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    .line 30
    iput-object p2, p0, Lcom/umeng/analytics/pro/bb;->a:Ljava/lang/Class;

    .line 31
    return-void
.end method
