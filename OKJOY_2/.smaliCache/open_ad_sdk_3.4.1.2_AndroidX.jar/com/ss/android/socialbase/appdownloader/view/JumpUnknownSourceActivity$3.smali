.class Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;
.super Ljava/lang/Object;
.source "JumpUnknownSourceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;->a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 122
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;->a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;->a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->b(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;->a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->c(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;)Z

    move-result p1

    .line 123
    if-nez p1, :cond_23

    .line 124
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;->a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Z)Z

    goto :goto_32

    .line 126
    :cond_23
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;->a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->b(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;->a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->c(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/appdownloader/b;->c(ILorg/json/JSONObject;)V

    .line 128
    :goto_32
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;->a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->b(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;->a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->c(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/appdownloader/b;->a(ILorg/json/JSONObject;)V

    .line 129
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;->a:Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->finish()V

    .line 130
    return-void
.end method
