.class public Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService$OkJoyAgeFloatViewServiceBinder;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OkJoyAgeFloatViewServiceBinder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService$OkJoyAgeFloatViewServiceBinder;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService$OkJoyAgeFloatViewServiceBinder;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;

    return-object v0
.end method
