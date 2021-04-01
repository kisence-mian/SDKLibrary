.class public Lcom/JoyFramework/module/point/FloatViewService$a;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/module/point/FloatViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/point/FloatViewService;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/module/point/FloatViewService;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/JoyFramework/module/point/FloatViewService$a;->a:Lcom/JoyFramework/module/point/FloatViewService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/JoyFramework/module/point/FloatViewService;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/JoyFramework/module/point/FloatViewService$a;->a:Lcom/JoyFramework/module/point/FloatViewService;

    return-object v0
.end method
