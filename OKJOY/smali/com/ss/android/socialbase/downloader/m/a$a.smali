.class public Lcom/ss/android/socialbase/downloader/m/a$a;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/m/a$a;->b(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p3}, Lcom/ss/android/socialbase/downloader/m/a$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/m/a$a;->a(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p4}, Lcom/ss/android/socialbase/downloader/m/a$a;->c(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0, p5}, Lcom/ss/android/socialbase/downloader/m/a$a;->d(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, p6}, Lcom/ss/android/socialbase/downloader/m/a$a;->a(I)V

    .line 243
    invoke-virtual {p0, p7}, Lcom/ss/android/socialbase/downloader/m/a$a;->a(Z)V

    .line 244
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 224
    iput p1, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->f:I

    .line 225
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->c:Landroid/graphics/drawable/Drawable;

    .line 185
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->a:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->g:Z

    .line 193
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->b:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->g:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->d:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->e:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/a$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n  pkg name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/m/a$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  app icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/m/a$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  app name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/m/a$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  app path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/m/a$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  app v name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/m/a$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  app v code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/m/a$a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  is system: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/m/a$a;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    return-object v0
.end method
