.class public Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;
.super Landroid/database/ContentObserver;
.source "IdentifierIdObserver.java"


# static fields
.field private static final a:Ljava/lang/String; = "VMS_IDLG_SDK_Observer"


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;


# direct methods
.method public constructor <init>(Lorg/repackage/com/vivo/identifier/IdentifierIdClient;ILjava/lang/String;)V
    .registers 5

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 17
    iput-object p1, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->d:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    .line 18
    iput p2, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->c:I

    .line 19
    iput-object p3, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->b:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 25
    iget-object p1, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->d:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    if-eqz p1, :cond_c

    .line 26
    iget v0, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->c:I

    iget-object v1, p0, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(ILjava/lang/String;)V

    goto :goto_13

    .line 28
    :cond_c
    const-string p1, "VMS_IDLG_SDK_Observer"

    const-string v0, "mIdentifierIdClient is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_13
    return-void
.end method
