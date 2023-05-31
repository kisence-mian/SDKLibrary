.class final Lcom/mintegral/msdk/base/common/b/e$a;
.super Ljava/lang/Object;
.source "MIntegralDirManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/common/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/mintegral/msdk/base/common/b/c;

.field public b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/common/b/c;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/b/e$a;->a:Lcom/mintegral/msdk/base/common/b/c;

    .line 123
    iput-object p2, p0, Lcom/mintegral/msdk/base/common/b/e$a;->b:Ljava/io/File;

    .line 124
    return-void
.end method
