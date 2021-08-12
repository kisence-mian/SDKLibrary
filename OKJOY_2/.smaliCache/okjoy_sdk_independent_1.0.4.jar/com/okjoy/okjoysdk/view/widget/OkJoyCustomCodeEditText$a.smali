.class public Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText$a;->a:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText$a;->a:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    iput-object p1, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->e:Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
