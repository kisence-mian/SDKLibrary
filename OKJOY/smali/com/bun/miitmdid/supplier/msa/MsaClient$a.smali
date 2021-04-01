.class Lcom/bun/miitmdid/supplier/msa/MsaClient$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/supplier/msa/MsaClient;-><init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bun/miitmdid/c/e/a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field final synthetic b:Lcom/bun/miitmdid/supplier/msa/MsaClient;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bun/miitmdid/supplier/msa/MsaClient;Lcom/bun/miitmdid/c/e/a;)V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput-object p1, p0, Lcom/bun/miitmdid/supplier/msa/MsaClient$a;->b:Lcom/bun/miitmdid/supplier/msa/MsaClient;

    iput-object p2, p0, Lcom/bun/miitmdid/supplier/msa/MsaClient$a;->a:Lcom/bun/miitmdid/c/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synchronized native declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
