.class final Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;
.super Ljava/lang/Object;
.source "CallMraidJS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgjscommon/mraid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/mintegral/msdk/mtgjscommon/mraid/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    return-void
.end method

.method static synthetic a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    return-object v0
.end method
