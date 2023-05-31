.class final Lcom/mintegral/msdk/videocommon/download/j$a;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videocommon/download/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/mintegral/msdk/videocommon/download/j;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/mintegral/msdk/videocommon/download/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/videocommon/download/j;-><init>(B)V

    sput-object v0, Lcom/mintegral/msdk/videocommon/download/j$a;->a:Lcom/mintegral/msdk/videocommon/download/j;

    return-void
.end method
