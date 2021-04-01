.class public Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a$a;
.super Ljava/lang/Object;
.source "AbstractActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a$a;->a:Z

    .line 110
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a$a;->a:Z

    .line 126
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 115
    const-string v0, "ActivityErrorListener"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a$a;->a:Z

    .line 117
    return-void
.end method
