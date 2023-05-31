.class public Lcom/JoyFramework/d/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/d/cb$b;,
        Lcom/JoyFramework/d/cb$a;
    }
.end annotation


# static fields
.field private static c:Lcom/JoyFramework/d/cb;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/text/SpannableStringBuilder;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static a()Lcom/JoyFramework/d/cb;
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lcom/JoyFramework/d/cb;->c:Lcom/JoyFramework/d/cb;

    if-nez v0, :cond_13

    .line 26
    const-class v1, Lcom/JoyFramework/d/cb;

    monitor-enter v1

    .line 27
    :try_start_7
    sget-object v0, Lcom/JoyFramework/d/cb;->c:Lcom/JoyFramework/d/cb;

    if-nez v0, :cond_12

    .line 28
    new-instance v0, Lcom/JoyFramework/d/cb;

    invoke-direct {v0}, Lcom/JoyFramework/d/cb;-><init>()V

    sput-object v0, Lcom/JoyFramework/d/cb;->c:Lcom/JoyFramework/d/cb;

    .line 30
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 32
    :cond_13
    sget-object v0, Lcom/JoyFramework/d/cb;->c:Lcom/JoyFramework/d/cb;

    return-object v0

    .line 30
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Landroid/widget/TextView;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;)V
    .registers 9

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/JoyFramework/d/cb;->b:Landroid/text/SpannableStringBuilder;

    .line 39
    iget-object v0, p0, Lcom/JoyFramework/d/cb;->b:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/JoyFramework/d/cb$a;

    invoke-direct {v1, p0, p3}, Lcom/JoyFramework/d/cb$a;-><init>(Lcom/JoyFramework/d/cb;Lcom/JoyFramework/d/cb$b;)V

    iget-object v2, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 42
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 43
    iget-object v0, p0, Lcom/JoyFramework/d/cb;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public a(Landroid/widget/TextView;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;Ljava/lang/String;Lcom/JoyFramework/d/cb$b;)V
    .registers 12

    .prologue
    const/16 v5, 0x21

    .line 48
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/JoyFramework/d/cb;->b:Landroid/text/SpannableStringBuilder;

    .line 51
    iget-object v0, p0, Lcom/JoyFramework/d/cb;->b:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/JoyFramework/d/cb$a;

    invoke-direct {v1, p0, p3}, Lcom/JoyFramework/d/cb$a;-><init>(Lcom/JoyFramework/d/cb;Lcom/JoyFramework/d/cb$b;)V

    iget-object v2, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 54
    iget-object v0, p0, Lcom/JoyFramework/d/cb;->b:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/JoyFramework/d/cb$a;

    invoke-direct {v1, p0, p5}, Lcom/JoyFramework/d/cb$a;-><init>(Lcom/JoyFramework/d/cb;Lcom/JoyFramework/d/cb$b;)V

    iget-object v2, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/JoyFramework/d/cb;->a:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 57
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 58
    iget-object v0, p0, Lcom/JoyFramework/d/cb;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method
