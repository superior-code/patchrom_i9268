.class Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/OriginalSettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09056e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    return-void
.end method
