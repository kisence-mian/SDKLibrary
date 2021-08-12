.class public final Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/q/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->startRequestPermission(Landroid/app/Activity;Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$10;->val$listener:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsGranted()V
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$10;->val$listener:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;

    invoke-interface {v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;->onPermissionsGranted()V

    return-void
.end method
