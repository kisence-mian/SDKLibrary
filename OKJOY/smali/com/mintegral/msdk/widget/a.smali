.class public abstract Lcom/mintegral/msdk/widget/a;
.super Ljava/lang/Object;
.source "MIntegralNoDoubleClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mintegral/msdk/widget/a;->a:J

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 23
    iget-wide v2, p0, Lcom/mintegral/msdk/widget/a;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    .line 24
    iput-wide v0, p0, Lcom/mintegral/msdk/widget/a;->a:J

    .line 25
    invoke-virtual {p0}, Lcom/mintegral/msdk/widget/a;->a()V

    .line 27
    :cond_17
    return-void
.end method
