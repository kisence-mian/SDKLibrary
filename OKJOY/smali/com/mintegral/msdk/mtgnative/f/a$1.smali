.class final Lcom/mintegral/msdk/mtgnative/f/a$1;
.super Ljava/lang/Object;
.source "NativeProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/f/a;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/f/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/f/a;)V
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/f/a$1;->a:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/f/a$1;->a:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Lcom/mintegral/msdk/mtgnative/f/a;)V

    .line 155
    return-void
.end method
