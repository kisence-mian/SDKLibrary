.class final Lcom/mintegral/msdk/click/a$4;
.super Ljava/lang/Object;
.source "CommonClickControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/mintegral/msdk/click/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/mintegral/msdk/click/a$4;->d:Lcom/mintegral/msdk/click/a;

    iput-object p2, p0, Lcom/mintegral/msdk/click/a$4;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object p3, p0, Lcom/mintegral/msdk/click/a$4;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/mintegral/msdk/click/a$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$4;->d:Lcom/mintegral/msdk/click/a;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$4;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$4;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mintegral/msdk/click/a$4;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    .line 1942
    return-void
.end method
