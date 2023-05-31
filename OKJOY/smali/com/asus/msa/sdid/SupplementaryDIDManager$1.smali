.class public Lcom/asus/msa/sdid/SupplementaryDIDManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/msa/sdid/SupplementaryDIDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/asus/msa/sdid/SupplementaryDIDManager;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/asus/msa/sdid/SupplementaryDIDManager;)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;->a:Lcom/asus/msa/sdid/SupplementaryDIDManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
