.class public Lcom/uc/crashsdk/a/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:I

.field private final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/a/e;->a:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/uc/crashsdk/a/e;->b:I

    .line 78
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/uc/crashsdk/a/e;->b:I

    .line 83
    iput-object p2, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    .line 84
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .line 150
    iget v0, p0, Lcom/uc/crashsdk/a/e;->b:I

    sparse-switch v0, :sswitch_data_3e

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown sync runnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uc/crashsdk/a/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crashsdk"

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-boolean v0, Lcom/uc/crashsdk/a/e;->a:Z

    if-eqz v0, :cond_38

    .line 171
    const/4 v0, 0x0

    return v0

    .line 164
    :sswitch_23
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/f;->a(I[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 159
    :sswitch_2a
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->b(I[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 155
    :sswitch_31
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/h;->b(I[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 168
    :cond_38
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :sswitch_data_3e
    .sparse-switch
        0x15f -> :sswitch_31
        0x160 -> :sswitch_31
        0x161 -> :sswitch_31
        0x162 -> :sswitch_31
        0x1c3 -> :sswitch_2a
        0x1c4 -> :sswitch_2a
        0x2ef -> :sswitch_23
        0x2f0 -> :sswitch_23
        0x2f1 -> :sswitch_23
    .end sparse-switch
.end method

.method public run()V
    .registers 3

    .line 88
    iget v0, p0, Lcom/uc/crashsdk/a/e;->b:I

    sparse-switch v0, :sswitch_data_4e

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown async runnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uc/crashsdk/a/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crashsdk"

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-boolean v0, Lcom/uc/crashsdk/a/e;->a:Z

    if-eqz v0, :cond_48

    .line 147
    return-void

    .line 139
    :sswitch_22
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(I)V

    .line 140
    return-void

    .line 131
    :sswitch_26
    invoke-static {v0}, Lcom/uc/crashsdk/f;->b(I)V

    .line 132
    return-void

    .line 135
    :sswitch_2a
    invoke-static {v0}, Lcom/uc/crashsdk/a/d;->a(I)V

    .line 136
    return-void

    .line 127
    :sswitch_2e
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(I[Ljava/lang/Object;)V

    .line 128
    return-void

    .line 109
    :sswitch_34
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/h;->a(I[Ljava/lang/Object;)V

    .line 110
    return-void

    .line 103
    :sswitch_3a
    invoke-static {v0}, Lcom/uc/crashsdk/a;->a(I)V

    .line 104
    return-void

    .line 98
    :sswitch_3e
    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(I)V

    .line 99
    return-void

    .line 90
    :sswitch_42
    iget-object v1, p0, Lcom/uc/crashsdk/a/e;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/f;->a(I[Ljava/lang/Object;)V

    .line 91
    return-void

    .line 144
    :cond_48
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :sswitch_data_4e
    .sparse-switch
        0xa -> :sswitch_42
        0x64 -> :sswitch_3e
        0x65 -> :sswitch_3e
        0x66 -> :sswitch_3e
        0x67 -> :sswitch_3e
        0x68 -> :sswitch_3e
        0xc9 -> :sswitch_3a
        0xca -> :sswitch_3a
        0x12d -> :sswitch_34
        0x12e -> :sswitch_34
        0x12f -> :sswitch_34
        0x191 -> :sswitch_2e
        0x192 -> :sswitch_2e
        0x193 -> :sswitch_2e
        0x195 -> :sswitch_2e
        0x196 -> :sswitch_2e
        0x197 -> :sswitch_2e
        0x198 -> :sswitch_2e
        0x199 -> :sswitch_2e
        0x19a -> :sswitch_2e
        0x19b -> :sswitch_2e
        0x19c -> :sswitch_2e
        0x19d -> :sswitch_2e
        0x19e -> :sswitch_2e
        0x19f -> :sswitch_2e
        0x1a0 -> :sswitch_2e
        0x1f4 -> :sswitch_2a
        0x2bc -> :sswitch_26
        0x320 -> :sswitch_22
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@action_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/uc/crashsdk/a/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
