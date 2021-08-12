.class public Lcom/asus/msa/sdid/SupplementaryDIDManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/msa/sdid/SupplementaryDIDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/asus/msa/sdid/SupplementaryDIDManager;


# direct methods
.method public constructor <init>(Lcom/asus/msa/sdid/SupplementaryDIDManager;)V
    .registers 2

    iput-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;->a:Lcom/asus/msa/sdid/SupplementaryDIDManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
