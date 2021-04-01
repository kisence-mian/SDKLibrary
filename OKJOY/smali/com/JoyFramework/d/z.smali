.class final Lcom/JoyFramework/d/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/JoyFramework/d/z;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/JoyFramework/d/z;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/JoyFramework/d/z;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/z;->b:Landroid/graphics/Bitmap;

    const-string v2, "\u56fe\u7247\u5df2\u4fdd\u5b58\u5230\u76f8\u518c"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bi;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1022
    return-void
.end method
