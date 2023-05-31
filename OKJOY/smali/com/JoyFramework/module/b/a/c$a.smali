.class Lcom/JoyFramework/module/b/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/module/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/JoyFramework/module/b/a/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/a/c;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/JoyFramework/module/b/a/c$a;->d:Lcom/JoyFramework/module/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
